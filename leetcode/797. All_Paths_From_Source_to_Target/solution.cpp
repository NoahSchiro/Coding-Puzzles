class Solution {
public:
    
    vector<vector<int>> ans;
    
    void dfs(const vector<vector<int>>& graph, int node, vector<int> visited) {
        
        //Base case is we find the target
        if(node == graph.size()-1) {
            
            //Add the final step to the path
            visited.push_back(node);
            
            //Add to answer
            ans.push_back(visited);
        }
        
        //Other base case is we hit a dead end
        if(graph[node].empty()) {
            return;
        }
        
        //For all other cases, we will recurse down. We 
        //want to keep track of the nodes we have already seen
        //so let's add it to our list of visited nodes
        visited.push_back(node);
        
        for(auto it : graph[node]) {
            dfs(graph, it, visited);
        }
        
    }
    
    vector<vector<int>> allPathsSourceTarget(vector<vector<int>>& graph) {
        
        dfs(graph, 0, {});
        
        return ans;
    }
};